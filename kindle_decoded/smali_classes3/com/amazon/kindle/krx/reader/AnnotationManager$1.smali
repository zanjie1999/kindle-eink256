.class synthetic Lcom/amazon/kindle/krx/reader/AnnotationManager$1;
.super Ljava/lang/Object;
.source "AnnotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/reader/AnnotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    invoke-static {}, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->values()[Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/krx/reader/AnnotationManager$1;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->NOTE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/krx/reader/AnnotationManager$1;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    sget-object v1, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
