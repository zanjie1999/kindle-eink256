.class public Lcom/amazon/kcp/wordwise/util/DefaultBase64ServiceImpl;
.super Ljava/lang/Object;
.source "DefaultBase64ServiceImpl.java"

# interfaces
.implements Lcom/amazon/kcp/wordwise/util/IBase64Service;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kcp/wordwise/util/DefaultBase64ServiceImpl;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/util/DefaultBase64ServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 16
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/wordwise/util/DefaultBase64ServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Input %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
