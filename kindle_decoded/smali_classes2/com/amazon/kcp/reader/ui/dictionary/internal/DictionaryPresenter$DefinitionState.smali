.class final enum Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;
.super Ljava/lang/Enum;
.source "DictionaryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DefinitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

.field public static final enum DICTIONARY_ERROR:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

.field public static final enum DICTIONARY_NOT_AVAILABLE_YET:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

.field public static final enum DICTIONARY_NOT_LOCAL:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

.field public static final enum HAS_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

.field public static final enum NO_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 50
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    const/4 v1, 0x0

    const-string v2, "HAS_DEFINITION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->HAS_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    .line 51
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    const/4 v2, 0x1

    const-string v3, "NO_DEFINITION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->NO_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    .line 52
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    const/4 v3, 0x2

    const-string v4, "DICTIONARY_NOT_LOCAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_LOCAL:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    const/4 v4, 0x3

    const-string v5, "DICTIONARY_NOT_AVAILABLE_YET"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_AVAILABLE_YET:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    .line 54
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    const/4 v5, 0x4

    const-string v6, "DICTIONARY_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_ERROR:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    .line 49
    sget-object v7, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->HAS_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->NO_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_LOCAL:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_AVAILABLE_YET:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->$VALUES:[Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->$VALUES:[Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object v0
.end method
