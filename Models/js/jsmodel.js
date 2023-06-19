import * as THREE from 'https://unpkg.com/three/build/three.module.js';
import { OrbitControls } from 'https://unpkg.com/three@0.127.0/examples/jsm/controls/OrbitControls.js';
import { GLTFLoader } from 'https://unpkg.com/three@0.127.0/examples/jsm/loaders/GLTFLoader.js';

var loader = new GLTFLoader();
            
loader.load( '../Models/asset.glb', function ( gltf )
{
    sword = gltf.scene;  // sword 3D object is loaded
    sword.scale.set(2, 2, 2);
    sword.position.y = 4;
    scene.add(sword);
} );