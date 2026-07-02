.class synthetic Lcom/amazon/kindle/krx/content/ContentSelection$1;
.super Ljava/lang/Object;
.source "ContentSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/ContentSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$content$IContentSelection$KRXSelectionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 143
    invoke-static {}, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->values()[Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$kindle$krx$content$IContentSelection$KRXSelectionType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$kindle$krx$content$IContentSelection$KRXSelectionType:[I

    sget-object v3, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$kindle$krx$content$IContentSelection$KRXSelectionType:[I

    sget-object v4, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :catch_2
    invoke-static {}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->values()[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionType:[I

    :try_start_3
    sget-object v4, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionType:[I

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionType:[I

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
