.class public final enum Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
.super Ljava/lang/Enum;
.source "CardSideModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/models/CardSideModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field public static final enum CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field public static final enum GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field public static final enum HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field public static final enum NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field public static final enum NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field public static final enum XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 161
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 162
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v2, 0x1

    const-string v3, "HIGHLIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 163
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v3, 0x2

    const-string v4, "GHL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 164
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v4, 0x3

    const-string v5, "NOTE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 165
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v5, 0x4

    const-string v6, "XRAY"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 166
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v6, 0x5

    const-string v7, "CUSTOM"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 159
    sget-object v8, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->$VALUES:[Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
    .locals 1

    .line 170
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0

    .line 174
    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    sget-object p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0

    .line 178
    :cond_1
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    sget-object p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0

    .line 182
    :cond_2
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    sget-object p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0

    .line 186
    :cond_3
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 188
    sget-object p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0

    .line 191
    :cond_4
    sget-object p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
    .locals 1

    .line 159
    const-class v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
    .locals 1

    .line 159
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->$VALUES:[Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$1;->$SwitchMap$com$amazon$kedu$flashcards$models$CardSideModel$TYPE:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "none"

    return-object v0

    :cond_0
    const-string v0, "custom"

    return-object v0

    :cond_1
    const-string/jumbo v0, "xray"

    return-object v0

    :cond_2
    const-string v0, "note"

    return-object v0

    :cond_3
    const-string v0, "ghighlight"

    return-object v0

    :cond_4
    const-string v0, "highlight"

    return-object v0
.end method
