.class Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;
.super Ljava/lang/Object;
.source "StoreOpeners.java"

# interfaces
.implements Lcom/amazon/kindle/store/StoreOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/utils/StoreOpeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullStoreOpener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    return-void
.end method

.method public setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 0

    return-object p0
.end method

.method public setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 0

    return-object p0
.end method

.method public setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 0

    return-object p0
.end method
