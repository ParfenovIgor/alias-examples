(echo "Start") > out

(echo "Alias compile") >> out
for i in {1..5}
do
    cd alias
    (time calias main.al -o main) 2>> ../out
    cd ..
done

(echo "Alias run") >> out
for i in {1..5}
do
    (time ./alias/main) 2>> out
done

(echo "C compile") >> out
for i in {1..5}
do
    (time gcc c/main.c -o c/main) 2>> out
done

(echo "C run") >> out
for i in {1..5}
do
    (time ./c/main) 2>> out
done

(echo "C++ compile") >> out
for i in {1..5}
do
    (time g++ c++/main.cpp -o c++/main) 2>> out
done

(echo "C++ run") >> out
for i in {1..5}
do
    (time ./c++/main) 2>> out
done