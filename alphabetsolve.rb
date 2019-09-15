# alphabetsolve.rb

a,b,c,d,e,f,g,h = 1

def check(a, b, c, d, e, f, g, h)
  flag = false
  flag = true if (a==b || a==c || a==d || a==e || a==f || a==g || a==h)
  flag = true if (b==c || b==d || b==e || b==f || b==g || b==h)
  flag = true if (c==d || c==e || c==f || c==g || c==h)
  flag = true if (d==e || d==f || d==g || d==h)
  flag = true if (e==f || e==g || e==h)
  flag = true if (f==g || f==h)
  flag = true if (g==h)
  return flag
end

def calculate(a, b, c, d, e, f, g, h)
  # AFBF +
  # CGHB +
  # DAFG +
  # AEAB
  # ----
  # BCDC
  # ====
  _C0 = (f+b+g+b) %10
  _N1 = (f+b+g+b) /10
  _C1 = (b+h+f+a + _N1)%10
  _N2 = (b+h+f+a + _N1)/10
  _C2 = (f+g+a+e + _N2)%10
  _N3 = (f+g+a+e + _N2)/10
  _C3 = a+c+d+a + _N3
  if ((_C0 == c) && (_C1==d) && (_C2==c) && (_C3 == b))
    return true
  else
    return false
  end
  return false
end

def run()
  for a in 1..9 do
    for b in 1..9 do
      for c in 1..9 do
        for d in 1..9 do
          for e in 1..9 do
            for f in 1..9 do
              for g in 1..9 do
                for h in 1..9 do
                  # puts "#{a}, #{b}, #{c}, #{d}, #{e}, #{f}, #{g}, #{h}" if (!check(a, b, c, d, e, f, g, h))
                  if (!check(a, b, c, d, e, f, g, h))
                    if (calculate(a, b, c, d, e, f, g, h))
                      puts "#{a}, #{b}, #{c}, #{d}, #{e}, #{f}, #{g}, #{h}"
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

run()
