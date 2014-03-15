def add_rels():
    fr = open('rel_temp.csv')
    fw = open('rels.csv','a+')
    for i,line in enumerate(fr):
        if i == 0:
            fw.write('id:int:authors  id:int:pubs   type\n')
        else:
            linearr = line.split('\t','\n')
            linestr = ''
            for l in linearr:
                linestr += l+'  '
            fw.write(linestr+'AUTHOR_OF\n')

if __name__ == '__main__':
    add_rels()
