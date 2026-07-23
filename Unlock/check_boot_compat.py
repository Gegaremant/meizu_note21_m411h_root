import os
import hashlib

def get_sha256(filepath):
    if not os.path.exists(filepath):
        return None
    hasher = hashlib.sha256()
    with open(filepath, 'rb') as f:
        while chunk := f.read(8192):
            hasher.update(chunk)
    return hasher.hexdigest()

def check_compatibility():
    stock_boot = 'boot.img'
    new_boot = 'boot_b_new.bin'
    
    if not os.path.exists(new_boot):
        print(f"Error: Dumped boot image {new_boot} was not found.")
        return False
        
    print(f"Comparing dumped boot image with stock profile...")
    hash_stock = get_sha256(stock_boot)
    hash_new = get_sha256(new_boot)
    
    print(f"  Stock boot SHA256: {hash_stock}")
    print(f"  New boot SHA256:   {hash_new}")
    
    if hash_stock == hash_new:
        print("BOOT COMPATIBILITY: IDENTICAL")
        return True
    else:
        print("BOOT COMPATIBILITY: DIFFERENT")
        return False

if __name__ == "__main__":
    check_compatibility()
