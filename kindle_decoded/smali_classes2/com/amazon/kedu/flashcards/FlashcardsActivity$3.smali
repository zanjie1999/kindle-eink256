.class synthetic Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;
.super Ljava/lang/Object;
.source "FlashcardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$CardCreationParams$ConstructionType:[I

.field static final synthetic $SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 647
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->values()[Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->XRAY:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    sget-object v3, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->NOTEBOOK:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 585
    :catch_1
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->values()[Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$CardCreationParams$ConstructionType:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->TEXT:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$CardCreationParams$ConstructionType:[I

    sget-object v3, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->GHL:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 102
    :catch_3
    invoke-static {}, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->values()[Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    :try_start_4
    sget-object v3, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->NOTE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    sget-object v2, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    sget-object v1, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
