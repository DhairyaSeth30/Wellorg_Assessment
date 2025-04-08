import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';



class EquationListScreen extends StatelessWidget {
  const EquationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> equations = [
      {
        'description':
        '١. إذا كانت ∫ (من ٠ إلى ∞) e^(-x²) dx = √π / 2، فإن هذا التكامل يُستخدم في توزيع غاوس الاحتمالي',
        'latex': r'\int_{0}^{\infty} e^{-x^2} \, dx = \frac{\sqrt{\pi}}{2}',
      },
      {
        'description':
        '٢. معادلة شرودنغر: ħ² / (2m) ∇²ψ + Vψ = Eψ، حيث ψ تصف الحالة الكمومية للجسيم',
        'latex': r'\frac{\hbar^2}{2m} \nabla^2 \psi + V \psi = E \psi',
      },
      {
        'description':
        '٣. في المتسلسلة الهندسية: S = a / (1 - r)، تستخدم هذه الصيغة فقط عندما |r| < 1 لضمان التقارب',
        'latex': r'S = \frac{a}{1 - r}, \quad |r| < 1',
      },
      {
        'description':
        '٤. معادلة أينشتاين للطاقة: E = mc²، تشرح العلاقة بين الكتلة والطاقة في النسبية الخاصة',
        'latex': r'E = mc^2',
      },
      {
        'description':
        '٥. قانون نيوتن الثاني: F = ma، وهو أساس الميكانيكا الكلاسيكية ويصف تأثير القوة على الجسم',
        'latex': r'F = ma',
      },
      {
        'description':
        '٦. إذا كانت f(x) = x³ + ٢x² - ٥x، فإن المشتقة f\'(x) = ٣x² + ٤x - ٥ تمثل معدل التغير اللحظي',
        'latex': r"f(x) = x^3 + 2x^2 - 5x,\quad f'(x) = 3x^2 + 4x - 5",
      },
      {
        'description':
        '٧. ∑ (من n = 1 إلى ∞) 1/n² = π² / 6، وهي نتيجة مشهورة في متسلسلات التحليل الحقيقي',
        'latex': r'\sum_{n=1}^{\infty} \frac{1}{n^2} = \frac{\pi^2}{6}',
      },
      {
        'description':
        '٨. الدالة اللوغاريتمية الطبيعية: ln(x)، معرف فقط عندما x > 0 وتُستخدم في معادلات النمو الأسي',
        'latex': r'x > 0,\quad \ln(x)',
      },
      {
        'description':
        '٩. قانون الجاذبية العام: F = G * (m₁m₂) / r²، حيث G هو ثابت الجذب العام',
        'latex': r'F = G \cdot \frac{m_1 m_2}{r^2}',
      },
      {
        'description':
        '١٠. حل المعادلة التفاضلية dy/dx = ky يعطي: y = Ae^(kx)، حيث A ثابت تكامل',
        'latex': r'\frac{dy}{dx} = ky \Rightarrow y = Ae^{kx}',
      },
      {
        'description':
        '١١. معادلة الموجة: ∂²u/∂t² = c²∂²u/∂x² تصف انتشار الموجات في وسط مرن',
        'latex': r'\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}',
      },
      {
        'description':
        '١٢. الدالة الأسية e^ix = cos(x) + i sin(x)، تعبر عن صيغة أويلر الشهيرة',
        'latex': r'e^{ix} = \cos(x) + i\sin(x)',
      },
      {
        'description':
        '١٣. التكامل بالطرق العددية مثل طريقة شبه المنحرف مهمة لحساب المساحات تحت المنحنيات',
        'latex': r'\int_a^b f(x) dx \approx \frac{b-a}{2} [f(a) + f(b)]',
      },
      {
        'description':
        '١٤. في الإحصاء، التوزيع الطبيعي يعطى بـ f(x) = (1/√(2πσ²)) * e^(-(x-μ)²/2σ²)',
        'latex': r'f(x) = \frac{1}{\sqrt{2\pi\sigma^2}} e^{-\frac{(x - \mu)^2}{2\sigma^2}}',
      },
      {
        'description':
        '١٥. في الجبر الخطي، إذا كانت A مصفوفة مربعة و |A| ≠ ٠، فإن A لها معكوس',
        'latex': r'\text{If } |A| \neq 0, \text{ then } A^{-1} \text{ exists}',
      },
    ];

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
              'Arabic Equations'
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: equations.length,
          itemBuilder: (context, index) {
            final equation = equations[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    equation['description']!,
                    style: const TextStyle(fontSize: 18, height: 1.6),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Directionality(
                      textDirection: TextDirection.ltr, // Math always flows LTR
                      child: Math.tex(
                        equation['latex']!,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Divider()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


