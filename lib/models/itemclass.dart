import 'package:flutter/material.dart';

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;
  Items({
    @required this.id,
    @required this.name,
    @required this.desc,
    @required this.price,
    @required this.color,
    @required this.img,
  });

  factory Items.fromMap(Map json) {
    return Items(
      id: json["id"],
      name: json['name'],
      desc: json["desc"],
      price: json["price"],
      color: json["color"],
      img: json["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "img": img,
      };
}

class CatalogData {
  static List<Items> item = [
    // Items(
    //     id: 1,
    //     name: "rishabh",
    //     desc: "Student",
    //     price: 1000,
    //     color: "0XFF",
    //     img:
    //         "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QDRAODhAQDg4PDxEXDg0PDw8NDw8QFREWFhURFxYYHCggGBolGxYVITEhJSkrLi4uFx8zPDMtOCgtLisBCgoKDg0OGhAQGjYmHyYwNS0tMi4uLSstLS0tNy4vKystLS0tLS41LTUtLS0tLS0rLzEtLS0tLS0tKy0tLS0tLf/AABEIAPQAzgMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAAAQYCBQMECAf/xABMEAACAQICBAcJDAgFBQAAAAAAAQIDEQQhBQYSMQcTQVFhcbIiMjRzgZGTsdEVFzZCUlNUYmNyobMUIyaCkqLB8CRDo8LhFoPS4vH/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAQMEAgUG/8QAKhEBAAIBAwMEAQMFAAAAAAAAAAECAwQRMRIhURMyM3FBIqHRFBVSYcH/2gAMAwEAAhEDEQA/APuIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHWrQhFynJQit8pNJAcgNY9O4fklKa5406kl57B6cofaeSlUa9R36d/A2YNZ7u0PtPQ1PYPd2h9p6Gp7B6d/A2YNX7u0PtPQ1PYPd6h9r6Gp7B6d/A2gNX7v0Oar6Gp7CPd+hzVfQ1PYPTv4G1Bo8VrbgaMdutWVGKteVROEVfddvJHS98TQ30/Delh7SJpaPwLSCre+Job6fhvTU/aPfE0N9Pw3poe0jpkWkFW98TQ30/DZfbU/adzR2uOjcRLYoYzD1JfJjVg36yemfA3oITJOQAAAAAAAAAAESaSbeSSzfQUjFYqWIqcbK+zf9TDkhG+Tt8p5Z9Ni2aYk1ha7W/ialv4WU+jlG65Iyt0W2Y+qTNWnrHeRhjtMUKLUa9ejSk/iSlHa87kjt4TEQqrahVjJNXuo8j3PfuPO1bEzq161SvOSqSqz28rtSUmtnoSsl1JF64IsbVlKtTbbpwnT2d9k5xqOcf5IO3T0llcs2nZES+scX9ZeWP/JFs7NZ9G5rnRx1ZVNqGwouLb4xt2aWVrfic09y6JL8Xb+pZuljYbJkQdCNkbJIA4cThoVIuM4qUWmmmr5M8+8JGrUMBjf1aaoV05U4rdFpraiujOL8tuQ9Dmi03g41KsdqThaDzUVK72txxfHF42HmhbNnvv8AFyVvKKNKU5KEIynOTtGMU5Sk+ZJbz0M9Dr4tZdTp/wDscctGV45xdOf3ZbL/AJkjj+kj/L9k9LTaL1J0bHD0Y18LCVdUocdLja+dXZW28p276+4jH8HujakHxEJ4Wqs4VadWpPZlyNxnJ3XVbrNjUrVKbtUjKHNtJpPqfKclPG9Jq9HHtwlz8EGtGKjiq2hNIT4ytQV6FVvacoK3Lyqzi1y5rlufXD4DoytbW/Ayj/mUEp25UuM3/wAK8x9+PMzV6bbOQAFQAAAAAAAA6Wmn/hK/ip9llUwfJ1S9cC16b8Er+Jn2WU+jK0W1vUZdqBr0/tkVfWLUDA4ivKttVKM5u9Tip7O2+eSs8+myZvtWdBYbCUlDDpKN3ms227Xbbzbdlm+Zcx8F0xpKtjcRUrV6jyqPi6cpPZprbsklyWW99B9F4JdM1qnG0KkpVFSdNRnJuUtmaqdy299nTy6JNciOqXrNu0cm76tChtQlK9tk4Iu8E/rQ7aMnG6zEl3K+9DtI7isxM7ymUgEFiAgkgAVrWnEOEoO+9f1ZZGVLXlpU1LlWzZ815SR3T3QmOWtjpJ852KWk3zlUWJOWGKNc0hYutHSaatKzT3p2afkOKto2hUzpviZ9GcH+7yeTzFYpYzpNjhsf0lc4/Bs1mjaFSlrdo+NS1+JycXdSj+uzX/J6DPP2Cr7et2jX9hb849Ankaj3T9q55AAUIAAAAAAAAdHTfglfxM+yyn0Xlz863XTVmv75Ui26wytg67Xzb/HIqNLcbNN7ZFC07wZ062InWw2JVDjZOVSlKMXaT3tJyjbPPlWeRatTtV6Gj6ezGcZyk7znKcXKUrWu7bsskuTPfds21gormRdGOsTvA2PGQ+XD+KJG1e1r7K5XltO1t3MKTTSdl5uUyJ2AgEEgQCGSDKfr3ga1ZU1Qg6koZyinFPZ7pZXee9ZLMtzNRpapszT+qu1Ims7TusxV6rxD5LUlKMnCalCS76Mk4yXWnmhGsfSMdhaGKhsYiCnZdzUXc1IfdlvXVu6Ciawav1cJ3afG4du0ayVnFvdGa+K+nc+vI148sW7flpyae1O/4cFPEHbo4k0kah2KdYt2Utnq3U2tatHv7N+qqekDzJqpVf8A1JgZLeqcreSFU9Nnhar5J+1NuQAGZAAAAAAAADW6x+BV/Fv1oqNLcW7WPwKv4t+tFPpPI26b2yOUlGJJoHaws968x2DXwlZp8x3rkCSLi5BIEMXIYEMrms9XZcem2fNnIsTNNpfDwqT2al9nZTyezntS9rI327rtPO2SrR4fEmxp1Yyi4ySnCSanCSUoyi96a5Ucb0HD/KqST+TO0l51a34nXlTqUpbNRW5nvjLqZzF6zw9yNrdlM1q0E8JUVSnd4aq/1bbu6crX4qT5ck2nypPmbeljM+qVaNPEUZ0KudOpGz54vepLpTs11HyzG4WdCtUo1O/pycZW3PmkuhqzXQ0ehgydcbTy83UYfTtvHDuanu+sOD+5P8uoeojy1qW/2gwf3J/l1D1KePq/kn7n/jDbkABlcgAAAAAAAOjpzwSv4mfZZSqPeouunPBK/iZ9llIod6jZpuJHMSYkmkZHZoTytzHVOlPTmHp4mGGlP9ZUlGLSV409rvXN8m9c7Im0R3kbwi5s4YafFOmoxi2+7k5d9nklbk3GtqwcZOMt68pzW8WEEEEHYM0WnKuzNdKXrkbxlZ1qnaUP7+Uc24Xaf5assPiTZRlGpFwmrp/3dczKxh6xtsLXMc8va2cdWi6NTYbut8Zc69pVOELB50MUvjp06j+tFbUH5ttfuovWkI7dHa+NTzXVyrzZ+Qrms9LjNG1+ensTXRszV/5XLzm7S3/VEuM0deOf9KZwfv8AaTAeXsVD1EeXOD74SYDrfYmeozHq/kn7eJbkABmcgAAAAAAAOjp3wPEeJn2WUih3qLvpzwTEeJn2WUij3qNmm4kchJBJpEo+P6cxEo43E7Te0sRV67bbt+Fj6+UfXjVGtiKyxWDUZTmkq9JyjC7StGqm8t1k10J85RnpNq9h9G1S07+l4CjXbvPZ2avjIZS8+T8one7vvvn7SocHei8ZgONpYl0pUaqUo8VOU3TqrJppxW+Ns1fvS21Km07nGCtqzO8CbkXMbhs1CWyp65ytxfWv95aWyo68Syp/eXqmF2n+SGpw9U2mFqlfoTNphJlFqd3tQs1Cd4ST5Yy9Rosc74HFJ/Rq35bNiquzQnL6jS63kvxZqNJ1NnR+JfPQlHyz7hesvwU2lN+1bKZwffCTAdb7Ez1IeW+D34SYDrfYmepDHq/kn7fP25AAZkAAAAAAAAOjpzwSv4mfZZSKPeou+nPBK/iZ9llJo96jZpuJGZJBJpAkgkAjlTOIyiwOS5FzG5FwMmyoa9y7ml99eqZbLlS15jeNO3y12Zk15WYZ/XCt0JG50fBto1mFw9leTUY8rk0l+J2amlFFbFDOT31bWt91c/T/APTvoevW+zZaSxSbjQi7qLvUa+VyR8nr6jU65YnYwUKPxq9RXX1KfdN/xOB2NFYdyaKprRpJYjFScHelSWxSfJJJ91Pyyv5Ei/HTZzqcnTj28s+D34SYDrfYqHqQ8t8HfwkwHXLsVD1IeRqvkn7ePPIADMgAAAAAAAB0dN+CV/Ez7LKTR71dRdtN+CV/Ez7LKTR71dRs03EjMkgGkSCABJKZiAM7kXIuAJuVHXyUlCnstru1udvizLaVbXWG1Gmvrr1TO8fuhZije8KZGLbzbb6W2bHBYZtozwmBbe4aY01TwcXTp7NTFW73fGj0z6fq7+exs22entFI6rcI1m0qsNR/R6T/AMRWj3TTzpUnvfRJ7l5XzXpECKtWU5yqTk5zm25zlm5N8rMokw87LmnJbdu+Dv4SYDrl2Kh6kPLXB18JMB1y/LqHqU8PVfJP2pAAZgAAAAAAAB0dN+CV/Ez7LKPRfcrqLxpvwSv4mfZZRaT7ldRs03EjluLmNxc0jK4uY3JuBlcXMbi4GVxcxuTcDK5W9bcbQoxjPESajdKKjFzlKVpuy8ie+yLFconCjnRo+OX5dU7xe+HVLzS0WhW9Ka21Zp08NH9GpvJzvevJfeWUPJn0ldS/vpM9klRNuxkyWyTvaURickUFE5YwLIq5bTg7X7SYDrl+XUPUh5d4P1bWXAfvdioeojwNXG2W32AAMoAAAAAAAA6OnPBK/iZ9llDpPuV1F9001+iV75riZ3W74rKBSfcrqNmm4kctxcxuLmkZXFzG4AyuTcwuTcDK4uY3FwM7lI4S1elR8cuxULpcq2vFHjKdNJZqon5Nma/qW4I3yRA+bcWZRpG2lg1HvpRj96Sj6zhlVw8d9SMuiF5+rI9XorHModSFE7VPDZXeSW9vJI4amlIrKlT/AHqn/ivadSrUqVH3cm+aO6K6kh11j29zZvNRZQes2A2HdK93ayb2Km49PHl3g4ilrJgbq+/z7Mz1EfN6zf1bb+UgAMgAAAAAAAA4cZR4ylUp/LhKP8UWj5vRulsyVpRbjJPepLJo+nGi01q7GtJ1aUlSrPvrq8Kludcj6UX4MkVnaRUgd+WgsanbiVK3xlVp2fndyPcPG/Mr0tL2mv1KeR0Qd/3CxvzK9LT9o9wsb8yvS0/aPUp5HQB3/cLGfMr0tP2kPQeM+Z/1KftHqU8jog73uJjPmP8AUpe0h6ExvzF/+5S9o9SnkdJs+ccJmKVSpRoKz2NqU1vs3ZR/3n0vG6A0nKDVGjThN7nWqx2V09w231ZdZRMRwQaaqTlUniaEpzd5PLN+bJclugmufHWe/f62/kfPIYfmX4HNGiXn3m9M/SKHnXsJ953TX0ih517C+utwx+J/b+UxspkKBzxpFt96DTf0ih54+w7OC4FcfVko4zGKFL4yppO66M/Wi7+5YYjtWf2/mXW8NXwO6PlitPfpEFejhIP9ZybXJ/X8D0caXVTVjC6Nw6w+FjZb5zec5y52zdHiZsk5LTaXAACoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf//Z"),
  ];
}
