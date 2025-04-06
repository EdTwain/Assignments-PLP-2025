def file_read_write_challenge():
    """Handles both text and binary files with proper encoding detection."""
    while True:
        try:
            # Get file details
            input_filename = input("Enter input filename (e.g., data.txt): ").strip()
            output_filename = input("Enter output filename (e.g., modified_data.txt): ").strip()
            
            # Detect if file is binary (check common binary extensions)
            binary_extensions = {'.png', '.jpg', '.pdf', '.exe'}
            is_binary = any(input_filename.lower().endswith(ext) for ext in binary_extensions)
            
            # Read file with appropriate mode
            mode = 'rb' if is_binary else 'r'
            encoding = None if is_binary else 'utf-8'
            
            with open(input_filename, mode, encoding=encoding) as input_file:
                content = input_file.read() if not is_binary else "BINARY_DATA"
                
                print(f"\nFile type: {'BINARY' if is_binary else 'TEXT'}")
                if not is_binary:
                    print(f"Original content (first 100 chars):\n{content[:100]}...\n")
                
                # Get user modification choice
                if not is_binary:
                    modification = input("Choose modification:\n1. Uppercase\n2. Reverse\n3. Double lines\nChoice (1-3): ")
                    modified_content = modify_text(content, modification)
                else:
                    modified_content = content  # Skip modification for binary
                
                # Write output
                write_mode = 'wb' if is_binary else 'w'
                with open(output_filename, write_mode, encoding=encoding) as output_file:
                    output_file.write(modified_content if not is_binary else content)
                
                print(f"\nSuccess! Output saved to {output_filename}")
                break
                
        except FileNotFoundError:
            print(f"Error: File not found. Check the filename and try again.\n")
        except PermissionError:
            print("Error: Permission denied. Try another directory.\n")
        except UnicodeDecodeError:
            print("Error: Encoding issue. Specify correct encoding (e.g., 'latin1').\n")
        except Exception as e:
            print(f"Unexpected error: {str(e)}\n")

def modify_text(content, choice):
    """Applies text modifications."""
    if choice == '1':
        return content.upper()
    elif choice == '2':
        return content[::-1]
    elif choice == '3':
        return '\n'.join([line for line in content.split('\n') for _ in range(2)])
    else:
        return content  # Default: no modification

if __name__ == "__main__":
    print("=== Universal File Modifier ===")
    file_read_write_challenge()