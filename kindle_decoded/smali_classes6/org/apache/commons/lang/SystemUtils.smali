.class public Lorg/apache/commons/lang/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field private static final JAVA_HOME_KEY:Ljava/lang/String; = "java.home"

.field private static final JAVA_IO_TMPDIR_KEY:Ljava/lang/String; = "java.io.tmpdir"

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VERSION_TRIMMED:Ljava/lang/String;

.field private static final JAVA_VERSION_TRIM_SIZE:I = 0x3

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final OS_VERSION:Ljava/lang/String;

.field private static final USER_DIR_KEY:Ljava/lang/String; = "user.dir"

.field private static final USER_HOME_KEY:Ljava/lang/String; = "user.home"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "awt.toolkit"

    .line 105
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "file.encoding"

    .line 129
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "file.separator"

    .line 149
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.fonts"

    .line 169
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.graphicsenv"

    .line 189
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.headless"

    .line 212
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.printerjob"

    .line 232
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.class.path"

    .line 252
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.class.version"

    .line 272
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.compiler"

    .line 293
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.endorsed.dirs"

    .line 313
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.ext.dirs"

    .line 333
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.home"

    .line 353
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    .line 373
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.library.path"

    .line 393
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.runtime.name"

    .line 414
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.runtime.version"

    .line 435
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.specification.name"

    .line 455
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.specification.vendor"

    .line 475
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.specification.version"

    .line 495
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.util.prefs.PreferencesFactory"

    .line 516
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vendor"

    .line 537
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vendor.url"

    .line 557
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.version"

    .line 577
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.info"

    .line 598
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.name"

    .line 618
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.specification.name"

    .line 638
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.specification.vendor"

    .line 658
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.specification.version"

    .line 678
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.vendor"

    .line 698
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.version"

    .line 718
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "line.separator"

    .line 738
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "os.arch"

    .line 758
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "os.name"

    .line 778
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.version"

    .line 798
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    const-string v0, "path.separator"

    .line 818
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.country"

    .line 841
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "user.region"

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.dir"

    .line 863
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.home"

    .line 883
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.language"

    .line 904
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.name"

    .line 924
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.timezone"

    .line 944
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 962
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionTrimmed()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    .line 988
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsFloat()F

    .line 1009
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsInt()I

    const-string v0, "1.1"

    .line 1025
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "1.2"

    .line 1036
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "1.3"

    .line 1047
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "1.4"

    .line 1058
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "1.5"

    .line 1069
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "1.6"

    .line 1080
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "1.7"

    .line 1093
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    const-string v0, "AIX"

    .line 1114
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    const-string v0, "HP-UX"

    .line 1127
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    const-string v0, "Irix"

    .line 1140
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    const-string v0, "Linux"

    .line 1153
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LINUX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    const-string v0, "Mac"

    .line 1166
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    const-string v0, "Mac OS X"

    .line 1179
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    const-string v0, "OS/2"

    .line 1192
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    const-string v0, "Solaris"

    .line 1205
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    const-string v0, "SunOS"

    .line 1218
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    .line 1232
    sget-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    :cond_3
    const-string v0, "Windows"

    .line 1247
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    const-string v1, "5.0"

    .line 1260
    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "Windows 9"

    const-string v2, "4.0"

    .line 1273
    invoke-static {v1, v2}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "4.1"

    .line 1287
    invoke-static {v1, v2}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "4.9"

    .line 1301
    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "Windows NT"

    .line 1315
    invoke-static {v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    const-string v1, "5.1"

    .line 1329
    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "6.0"

    .line 1343
    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "6.1"

    .line 1356
    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static getJavaVersionAsFloat()F
    .locals 2

    .line 1427
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->toVersionFloat([I)F

    move-result v0

    return v0
.end method

.method private static getJavaVersionAsInt()I
    .locals 2

    .line 1451
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->toVersionInt([I)I

    move-result v0

    return v0
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1

    .line 1464
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/SystemUtils;->isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getJavaVersionTrimmed()Ljava/lang/String;
    .locals 3

    .line 1473
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1474
    :goto_0
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1475
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 1477
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1494
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/lang/SystemUtils;->isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getOSMatchesName(Ljava/lang/String;)Z
    .locals 1

    .line 1505
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/SystemUtils;->isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1525
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1528
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1638
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1661
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1680
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static toJavaVersionIntArray(Ljava/lang/String;I)[I
    .locals 7

    if-nez p0, :cond_0

    .line 1783
    sget-object p0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_0
    const-string v0, "._- "

    .line 1785
    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1786
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1788
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_2

    if-ge v4, p1, :cond_2

    .line 1789
    aget-object v5, p0, v3

    .line 1790
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1792
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_3

    .line 1799
    new-array p0, v4, [I

    .line 1800
    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method private static toVersionFloat([I)F
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1828
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1831
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1832
    aget p0, p0, v2

    int-to-float p0, p0

    return p0

    .line 1834
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1835
    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    .line 1836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1837
    :goto_0
    array-length v2, p0

    if-ge v3, v2, :cond_2

    .line 1838
    aget v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1841
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method private static toVersionInt([I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1873
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 1875
    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0x64

    :cond_1
    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 1878
    aget v2, p0, v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 1881
    aget p0, p0, v3

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method
