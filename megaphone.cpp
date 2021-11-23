#include <iostream>

int main(int ac, char **av)
{
    int i;
    int j;

    if (ac == 1)
        std::cout << "* LOUD AND UNBEARABLE FEEDBACK NOISE *";
    else
    {
        i = 1;
        while(i < ac)
        {
            j = 0;
            while(av[i][j])
            {
                std::cout << toupper(av[i][j]);
                j++;
            }
            i++;
        }
    }
    std::cout << "\n";
    return (0);
}