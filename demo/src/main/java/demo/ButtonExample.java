package demo;

import javax.swing.*;  
import java.awt.*;  
import java.awt.event.*;  

public class ButtonExample {
    public static void main(String[] args) {
        // Create a frame (window)
        JFrame frame = new JFrame("Button Example");
        frame.setSize(300, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout()); // layout for arranging buttons

        // Create buttons
        JButton btn1 = new JButton("Click Me!");
        JButton btn2 = new JButton("Exit");

        // Add action to button 1
        btn1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(frame, "Hello! You clicked the button.");
            }
        });

        // Add action to button 2
        btn2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                System.exit(0); // closes program
            }
        });

        // Add buttons to frame
        frame.add(btn1);
        frame.add(btn2);

        // Make frame visible
        frame.setVisible(true);
    }
}
