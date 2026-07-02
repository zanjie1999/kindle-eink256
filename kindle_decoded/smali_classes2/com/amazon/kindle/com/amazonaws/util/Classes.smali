.class public final enum Lcom/amazon/kindle/com/amazonaws/util/Classes;
.super Ljava/lang/Enum;
.source "Classes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/util/Classes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/util/Classes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/kindle/com/amazonaws/util/Classes;

    .line 29
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/Classes;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/Classes;

    return-void
.end method

.method public static childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 43
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 53
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p0, :cond_2

    return-object p1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    move-object p1, v1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/Classes;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/Classes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/util/Classes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/util/Classes;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/Classes;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/Classes;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/util/Classes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/util/Classes;

    return-object v0
.end method
