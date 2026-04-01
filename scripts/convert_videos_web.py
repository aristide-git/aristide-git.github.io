import imageio
import os
import shutil

folder = r"c:\Users\arist\Documents\Projets\project-linkedin-site-perso\aristide-git.github.io\assets\images\vfi"
files = [
    "test1_original.mp4",
    "test1_interpolated.mp4",
    "test2_original.mp4",
    "test2_interpolated.mp4"
]

for file in files:
    filepath = os.path.join(folder, file)
    if not os.path.exists(filepath):
        print(f"File not found: {filepath}")
        continue
        
    print(f"Processing {filepath}")
    
    try:
        # Read video
        reader = imageio.get_reader(filepath)
        meta = reader.get_meta_data()
        fps = meta['fps']
        
        # Determine output dimensions (ensure multiple of 2 for yuv420p)
        temp_filepath = filepath + ".tmp.mp4"
        writer = imageio.get_writer(
            temp_filepath, 
            fps=fps, 
            codec='libx264', 
            pixelformat='yuv420p', 
            macro_block_size=2, # yuv420p requires dimensions to be a multiple of 2
            format='FFMPEG'
        )
        
        for i, frame in enumerate(reader):
            writer.append_data(frame)
            if i % 100 == 0:
                print(f"  Processed {i} frames...")
            
        writer.close()
        reader.close()
        
        # Replace original
        os.replace(temp_filepath, filepath)
        print(f"Successfully converted and replaced: {filepath}")
    except Exception as e:
        print(f"Error processing {filepath}: {e}")

print("All done!")
