.class synthetic Lcom/amazon/kindle/pagecurl/CurlView$18;
.super Ljava/lang/Object;
.source "CurlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/CurlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$pagecurl$CurlStartPosition:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$pagecurl$ViewMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1222
    invoke-static {}, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->values()[Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/pagecurl/CurlView$18;->$SwitchMap$com$amazon$kindle$pagecurl$CurlStartPosition:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/pagecurl/CurlView$18;->$SwitchMap$com$amazon$kindle$pagecurl$CurlStartPosition:[I

    sget-object v3, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1062
    :catch_1
    invoke-static {}, Lcom/amazon/kindle/pagecurl/ViewMode;->values()[Lcom/amazon/kindle/pagecurl/ViewMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/pagecurl/CurlView$18;->$SwitchMap$com$amazon$kindle$pagecurl$ViewMode:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlView$18;->$SwitchMap$com$amazon$kindle$pagecurl$ViewMode:[I

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
