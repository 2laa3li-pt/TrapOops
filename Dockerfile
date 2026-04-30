FROM node:22-slim

# تثبيت الأدوات اللازمة
RUN apt-get update && apt-get install -y \
    python3 \
    make \
    g++ \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# الخطوة المهمة: نسخ كل ملفات المشروع أولاً
COPY . .

# دلوقتي نشغل الـ install وكل الملفات موجودة
RUN npm install --legacy-peer-deps

EXPOSE 3000

CMD ["npm", "start"]