.class synthetic Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider$1;
.super Ljava/lang/Object;
.source "SearchableContentDecorationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 123
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->values()[Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider$1;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
