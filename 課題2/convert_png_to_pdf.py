import img2pdf
import os


input_folder = r"C:\Users\tosei\OneDrive\桌面\課題2"
output_folder = r"C:\Users\tosei\OneDrive\桌面\課題2"

if not os.path.exists(output_folder):
    os.makedirs(output_folder)
    print(f" output folder: {output_folder}")

image_files = [f for f in os.listdir(input_folder) if f.lower().endswith(".png")]

if not image_files:
    print("no png image")
else:
    print(f"found {len(image_files)} images, converting")

    for img in image_files:
        img_path = os.path.join(input_folder, img)
        pdf_path = os.path.join(output_folder, os.path.splitext(img)[0] + ".pdf")

        try:
            with open(pdf_path, "wb") as f:
                f.write(img2pdf.convert(img_path))
            print(f"successfully converted：{pdf_path}")
        except Exception as e:
            print(f"failed: {e}")

    print("all convert finished")

