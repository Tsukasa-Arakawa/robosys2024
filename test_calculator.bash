#!/bin/bash 



# テスト1: 定数の入力と結果確認
echo "Test 1: Constant input"
output=$(echo -e "c10\n=" | ./calculator | grep -o "= [0-9.]*" | tail -n 1)
expected="= 10.0"
if [ "$output" == "$expected" ]; then
    echo "Test 1 passed."
else
    echo "Test 1 failed. Expected: '$expected', Got: '$output'"
fi

# テスト2: 加算の確認
echo "Test 2: Addition"
output=$(echo -e "c10\n+\nc5\n=" | ./calculator | grep -o "= [0-9.]*" | tail -n 1)
expected="= 15.0"
if [ "$output" == "$expected" ]; then
    echo "Test 2 passed."
else
    echo "Test 2 failed. Expected: '$expected', Got: '$output'"
fi

# テスト3: 三角関数（sin）の確認
echo "Test 3: Sine calculation"
output=$(echo -e "fs90\n=" | ./calculator | grep -o "= [0-9.]*" | tail -n 1)
expected="= 1.0"
if [ "$output" == "$expected" ]; then
    echo "Test 3 passed."
else
    echo "Test 3 failed. Expected: '$expected', Got: '$output'"
fi

# テスト4: ゼロ除算
echo "Test 4: Division by zero"
output=$(echo -e "c10\n/\nc0\n=" | ./calculator)
expected="ERROR! Division by zero."
if [[ "$output" == *"$expected"* ]]; then
    echo "Test 4 passed."
else
    echo "Test 4 failed. Expected: '$expected', Got: '$output'"
fi

# テスト5: 無効な入力
echo "Test 5: Invalid input"
output=$(echo -e "invalid_input\n=" | ./calculator)
expected="ERROR! Input must start with 'c' or 'f'."
if [[ "$output" == *"$expected"* ]]; then
    echo "Test 5 passed."
else
    echo "Test 5 failed. Expected: '$expected', Got: '$output'"
fi

exit 0

