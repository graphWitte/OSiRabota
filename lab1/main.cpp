#include <iostream>
#include <thread>
#include <mutex>
#include "math_func.h"

std::mutex mtx; // общий ресурс для синхрона

void thread_task(int n, int thread_id) {
    unsigned long long result = calculate_factorial(n);
    
    // Блокируем доступ к консоли, чтобы вывод потоков не перемешался
    mtx.lock();
    std::cout << "Поток " << thread_id << " вычислил факториал " << n << " = " << result << "\n";
    mtx.unlock();
}

int main() {
    std::cout << "Запуск параллельных вычислений...\n";

    // Запускаем два потока одновременно
    std::thread t1(thread_task, 5, 1);
    std::thread t2(thread_task, 7, 2);

    // Ждем завершения потоков
    t1.join();
    t2.join();

    return 0;
}