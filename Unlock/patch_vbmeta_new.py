import os

def patch_vbmeta(filename):
    if not os.path.exists(filename):
        print(f"File {filename} not found.")
        return False
    
    try:
        with open(filename, 'rb+') as f:
            magic = f.read(4)
            if magic != b'AVB0':
                print(f"File {filename} is not a valid vbmeta image.")
                return False
            
            f.seek(120)
            flags = int.from_bytes(f.read(4), 'little')
            new_flags = flags | 3
            
            f.seek(120)
            f.write(new_flags.to_bytes(4, 'little'))
            print(f"Successfully patched {filename}: flags changed from {flags} to {new_flags}")
            return True
    except Exception as e:
        print(f"Error patching {filename}: {e}")
        return False

print("Patching dumped vbmeta images...")
s1 = patch_vbmeta('vbmeta_a_new.bin')
s2 = patch_vbmeta('vbmeta_b_new.bin')

if s1 and s2:
    print("VBMETA PATCH SUCCESS")
else:
    print("VBMETA PATCH FAILED")
