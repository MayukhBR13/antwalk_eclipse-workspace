package recap;

import java.util.function.Function;

public class ex5 {
	public Long factorial(Integer num) {
		long ans=1;
		for(int i=2;i<=num;i++)ans*=i;
		return ans;
	}
	public static void main(String[] args) {
		ex5 o=new ex5();
		Function<Integer,Long> fac=o::factorial;
		System.out.println("fac(5)= "+fac.apply(5));
	}
}

