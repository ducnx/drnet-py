import argparse
import os
import subprocess
classes = ['boxing', 'handclapping', 'handwaving', 'jogging', 'running', 'walking']
frame_rate = 25


def init_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--imageSize', dest='image_size', type=int, default=128, help='size of image')
    parser.add_argument('--dataRoot', dest='data_root', type=str, help='data root directory')
    args = parser.parse_args()
    return args


def run():
    args = init_arguments()
    data_root = args.data_root
    image_size = args.image_size
    for data_class in classes:
        print(' ---- ')
        print(data_class)
        folder = os.path.join(data_root, 'raw/', data_class)
        for file in os.listdir(folder):
            fname = file[:-11]
            os.makedirs(f'{data_root}/processed/{data_class}/{fname}/', exist_ok=True)
            cmd = f'ffmpeg -i {data_root}/raw/{data_class}/{file} -r {frame_rate} -f image2 -s {image_size}x{image_size} {data_root}/processed/{data_class}/{fname}/image-%03d_{image_size}x{image_size}.png'
            print(cmd)
            subprocess.run(cmd)


if __name__ == '__main__':
    run()
