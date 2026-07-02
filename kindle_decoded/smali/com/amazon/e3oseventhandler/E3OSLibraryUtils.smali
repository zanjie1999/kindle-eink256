.class public final Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;
.super Ljava/lang/Object;
.source "E3OSLibraryUtils.java"


# static fields
.field private static final ATTR_SEPARATOR:Ljava/lang/String; = "_"

.field public static final DEBUG:Z

.field private static final DEBUG_PROP:Ljava/lang/String; = "E3OSEInkLibraryLog"

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->isDebuggingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyValueFromTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "_"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 42
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const-string v4, ":"

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 45
    aget-object v4, v3, v1

    const/4 v5, 0x1

    .line 46
    aget-object v3, v3, v5

    .line 47
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isDebuggingEnabled()Z
    .locals 2

    const-string v0, "E3OSEInkLibraryLog"

    const/4 v1, 0x3

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
