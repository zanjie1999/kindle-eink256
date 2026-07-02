.class public final enum Lcom/amazon/kindle/tutorial/model/Buttons;
.super Ljava/lang/Enum;
.source "Buttons.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/tutorial/model/Buttons;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum BACK:Lcom/amazon/kindle/tutorial/model/Buttons;

.field private static final BUTTONS_KEY:Ljava/lang/String; = "buttons"

.field public static final enum DONE:Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum NEGATIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum NEUTRAL:Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum NEXT:Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum POSITIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum PREV:Lcom/amazon/kindle/tutorial/model/Buttons;

.field public static final enum X:Lcom/amazon/kindle/tutorial/model/Buttons;


# instance fields
.field private key:Ljava/lang/String;

.field private textRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 21
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "POSITIVE"

    const-string/jumbo v4, "positive"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->POSITIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 22
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const-string v3, "NEGATIVE"

    const-string v4, "negative"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->NEGATIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 27
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v3, 0x2

    const-string v4, "NEUTRAL"

    const-string v5, "neutral"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->NEUTRAL:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 33
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v4, 0x3

    const-string v5, "NEXT"

    const-string v6, "next"

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->NEXT:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 34
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v5, 0x4

    const-string v6, "PREV"

    const-string/jumbo v7, "prev"

    invoke-direct {v0, v6, v5, v7, v2}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->PREV:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 35
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v6, 0x5

    const-string v7, "DONE"

    const-string v8, "done"

    invoke-direct {v0, v7, v6, v8, v2}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->DONE:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 41
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v7, 0x6

    const-string v8, "X"

    const-string/jumbo v9, "x"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->X:Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 47
    new-instance v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    const/4 v8, 0x7

    const-string v9, "BACK"

    const-string v10, "back"

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/amazon/kindle/tutorial/model/Buttons;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->BACK:Lcom/amazon/kindle/tutorial/model/Buttons;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/tutorial/model/Buttons;

    .line 14
    sget-object v10, Lcom/amazon/kindle/tutorial/model/Buttons;->POSITIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->NEGATIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->NEUTRAL:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->NEXT:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->PREV:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->DONE:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->X:Lcom/amazon/kindle/tutorial/model/Buttons;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/tutorial/model/Buttons;->$VALUES:[Lcom/amazon/kindle/tutorial/model/Buttons;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/Buttons;->key:Ljava/lang/String;

    .line 56
    iput-boolean p4, p0, Lcom/amazon/kindle/tutorial/model/Buttons;->textRequired:Z

    return-void
.end method

.method public static getButtonsKey()Ljava/lang/String;
    .locals 1

    const-string v0, "buttons"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/model/Buttons;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/tutorial/model/Buttons;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/tutorial/model/Buttons;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/tutorial/model/Buttons;->$VALUES:[Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-virtual {v0}, [Lcom/amazon/kindle/tutorial/model/Buttons;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/tutorial/model/Buttons;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/Buttons;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isTextRequired()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/Buttons;->textRequired:Z

    return v0
.end method
