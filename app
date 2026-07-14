from flask import Flask, render_template, send_from_directory, redirect, url_for
import os
import csv

app = Flask(__name__)
attendance_dir = "attendance_records"

@app.route("/")
def index():
    records = []
    for file in sorted(os.listdir(attendance_dir), reverse=True):
        if file.endswith(".csv"):
            unique_students = set()
            filtered_data = []

            with open(os.path.join(attendance_dir, file), newline="") as f:
                reader = csv.DictReader(f)
                for row in reader:
                    name = row["Student Name"]
                    if name not in unique_students:
                        unique_students.add(name)
                        filtered_data.append(row)

            records.append({"filename": file, "data": filtered_data})
    
    return render_template("index.html", records=records)

@app.route("/download/<filename>")
def download_file(filename):
    return send_from_directory(attendance_dir, filename, as_attachment=True)

@app.route("/clear")
def clear_data():
    for file in os.listdir(attendance_dir):
        if file.endswith(".csv"):
            os.remove(os.path.join(attendance_dir, file))
    return redirect(url_for("index"))

if __name__ == "__main__":
    app.run(debug=True)
