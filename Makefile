
LLVM_FLAGS := `llvm-config --cppflags --ldflags`
LLVM_LIBS := `llvm-config --system-libs --libs all`

.PHONY: clean

all:
	clang++ -std=c++17 -Wall -Wextra -O0 -g -fsanitize=address,undefined -fno-omit-frame-pointer $(LLVM_FLAGS) neck.cpp $(LLVM_LIBS) -o neck

clean:
	rm -f neck
