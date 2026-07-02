.class synthetic Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

.field static final synthetic $SwitchMap$com$amazon$android$docviewer$mobi$IPageProvider$PagePosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1247
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->values()[Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$mobi$IPageProvider$PagePosition:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->CURRENT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$mobi$IPageProvider$PagePosition:[I

    sget-object v3, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->NEXT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$mobi$IPageProvider$PagePosition:[I

    sget-object v4, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->PREVIOUS:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 751
    :catch_2
    invoke-static {}, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->values()[Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    :try_start_3
    sget-object v4, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    sget-object v3, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->TAP_AND_HOLD:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DEFAULT:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
