.class synthetic Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;
.super Ljava/lang/Object;
.source "LibraryUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/LibraryUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 382
    invoke-static {}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->values()[Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/collections/CollectionFilter;->EBOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

    sget-object v3, Lcom/amazon/kindle/krx/collections/CollectionFilter;->PERIODICAL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :catch_1
    invoke-static {}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->values()[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    sget-object v2, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->ABOUT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->STORE:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
