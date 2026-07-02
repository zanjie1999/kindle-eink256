.class Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;
.super Ljava/lang/Object;
.source "AmazonWebKitFactories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonWebKitFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Implementation"
.end annotation


# static fields
.field static FACTORY:Lcom/amazon/android/webkit/AmazonWebKitFactory; = null

.field private static final SUFFIX:Ljava/lang/String; = ".wv"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 40
    const-class v0, Ljava/lang/String;

    const-string v1, "android.os.SystemProperties"

    const-string v2, "Unable to initialize webkit factory"

    .line 42
    :try_start_0
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 45
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x80

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 48
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 51
    :try_start_2
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "exception when getting application name."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 56
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "get"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v0, v9, v6

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v7, "PROP_NAME_MAX"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, -0x3

    if-le v7, v1, :cond_1

    .line 63
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".wv"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v4, v1, v10

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    :cond_2
    if-eqz v4, :cond_3

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 69
    :cond_3
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->access$100()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_5

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;->createWebKitFactoryByName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const-string v0, "com.amazon.android.webkit.embedded.EmbeddedWebKitFactory"

    const-string v1, "com.amazon.android.webkit.android.AndroidWebKitFactory"

    .line 72
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-ge v6, v5, :cond_7

    .line 73
    aget-object v1, v0, v6

    .line 74
    invoke-static {v1}, Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;->createWebKitFactoryByName(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 82
    :cond_7
    :goto_2
    sget-object v0, Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;->FACTORY:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    if-eqz v0, :cond_8

    return-void

    .line 83
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createWebKitFactoryByName(Ljava/lang/String;)Z
    .locals 3

    .line 98
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/webkit/AmazonWebKitFactory;

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;->FACTORY:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    .line 99
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully create WebKitFactory by name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 102
    :catch_0
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create WebKitFactoryByName failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 89
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
