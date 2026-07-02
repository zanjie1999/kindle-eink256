.class public Lcom/amazon/kcp/cover/CoverUtils;
.super Ljava/lang/Object;
.source "CoverUtils.java"


# direct methods
.method public static getDecoratorAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 0

    .line 15
    :try_start_0
    invoke-static {p0}, Landroid/text/Layout$Alignment;->valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 17
    :catch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0
.end method
