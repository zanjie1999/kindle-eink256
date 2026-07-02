.class public final Lcom/amazon/kedu/ftue/util/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# static fields
.field private static final BOOK_OPEN_KEY_FORMATTER:Ljava/lang/String; = "OnBookOpened_%s"


# direct methods
.method public static getBookOpenedForContentClass(Lcom/amazon/kindle/krx/content/IBook$BookContentClass;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 26
    sget-object p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->DEFAULT:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "OnBookOpened_%s"

    .line 27
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
