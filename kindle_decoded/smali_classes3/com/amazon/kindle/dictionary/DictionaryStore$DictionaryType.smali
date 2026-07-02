.class public final enum Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;
.super Ljava/lang/Enum;
.source "DictionaryStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/dictionary/DictionaryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DictionaryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

.field public static final enum MOBI:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

.field public static final enum YJ:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 157
    new-instance v0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    const/4 v1, 0x0

    const-string v2, "YJ"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->YJ:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    .line 158
    new-instance v0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    const/4 v2, 0x1

    const-string v3, "MOBI"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->MOBI:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    .line 156
    sget-object v4, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->YJ:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->$VALUES:[Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;
    .locals 1

    .line 156
    const-class v0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->$VALUES:[Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    return-object v0
.end method
