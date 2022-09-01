![dEducation-logo](https://user-images.githubusercontent.com/62663759/187912013-d1653a15-833a-4102-9091-0c9aa96b8505.png)

<h2 align="center">DEDUCATION DATABASE</h3>

#### ERD

![Copy of Hidden-Brain-ERD2 drawio(1)](https://user-images.githubusercontent.com/62663759/187882258-1113fcee-3f99-48c1-94b5-bcc7544dcc7d.png)

#### Languages, Tools and Frameworks:<a name="tools"></a>

- Oracle 19C
- Navicat Premium

#### Setting up the database

1. Go to sql plus

2. Enter credentials

   ```sh
   username: sys as sysdba
   password: password
   ```

3. Create a new user c##squirrel

```sh
create user c##deducation identified by password;
grant dba to c##deducation;
```

4. Find file dump.sql in `sql/SQL_DUMP.sql`

5. Head over to your favourite database GUI and connect squirrel with that

6. Import data from sql file depending upon the GUI.

7. The DUMP should work i hope 😩

8. If no errors are shown we are good to go!

## Supervisor

- Khaled Mahmud Shahriar

  - **Assistant Professor**

    :arrow_forward: **Contact:**

    Department of Computer Science and Engineering
    Bangladesh University of Engineering and Technology
    Dhaka-1000, Bangladesh

<p align="right">(<a href="#top">back to top</a>)</p>
