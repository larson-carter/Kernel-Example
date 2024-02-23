void kernel_main() {

    // Use a volatile to prevent the compiler from optimizing out the loop
    volatile unsigned char* video_memory = (unsigned char*)0xb8000;
    
    const char* hello = "Hello, World!";
    
    // Write "Hello, World!" to the text buffer
    for (int i = 0; i < 13; i++) {

        video_memory[i * 2] = hello[i];

        video_memory[i * 2 + 1] = 0x07; 

    }

}