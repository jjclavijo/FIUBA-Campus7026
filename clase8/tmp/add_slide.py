import re
from sys import argv

usage= """
script entrada salida
"""

if __name__ != '__main__':
    raise NotImplemented

if len(argv) != 3:
    print(usage)
    exit(1)

tblcount= 1
with open(argv[1],'r') as f:
    print('parsing {}'.format(argv[1]))
    grabado = []
    tmp = []

    while line := f.readline():
        if 'a:off' in line:
            if tmp:
                grabado.append((y,tmp))
                tmp = []
            y=re.match('.*y=\"(.*)\".*',line).groups()[0]
        if 'a:t>' in line:
            tmp.append(re.match('.*<a:t>(.*)<\/a:t>',line).groups()[0])
        if 'descr=' in line:
            tmp.append('#+CAPTION: {}'.format(re.match('.*descr=\"(.*)\".*',line).groups()[0]))
        if '[[' in line:
            tmp.append(line.strip())
        if 'a:tbl>' in line:
            tmp.append('#+TABLE:')
            tmp.append('#+ATTR_HTML: :width 600')
            tmp.append('[[./media/table.{}-{:02d}.png]]'.format(argv[1].split('/')[-1].strip('slide.txt'),tblcount))
            while line := f.readline():
                if '</a:tbl' in line:
                    break
            htmlfile = 'media/table.{}-{:02d}.html'.format(argv[1].split('/')[-1].strip('slide.txt'),tblcount)
            tmp.append('')
            tmp.append('#+BEGIN_EXPORT html')
            with open(htmlfile,'r') as ht:
                while htline := ht.readline():
                    if '<table' in htline:
                        tmp.append(htline.strip())
                        break
                while htline := ht.readline():
                    if '</table' in htline:
                        break
                    tmp.append(htline.strip())

            tmp.append('#+END_EXPORT')
            tmp.append('')
            tblcount += 1

    grabado.append((y,tmp))

key,info = zip(*sorted(list(grabado),key=lambda x: x[0]))

with open(argv[2],'a') as f:
    print('** {}'.format(argv[1]),file=f)
    for lista in info:
        print ('\n'.join(lista),file=f)

