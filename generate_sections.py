f = open("uc_sections.txt", "r")

def generate_sections():
    lines = f.readlines()

    for line in lines:
        line = line.strip()
        print('\subsection{%s}' % line)
        for tag in ['hệ thống con', 'Persistence', 'Distribution', 'tất cả']:
            title = line + ' (tích hợp ' + tag + ')'
            print('\subsubsection{%s}' % title)

if __name__ == '__main__':
    generate_sections()