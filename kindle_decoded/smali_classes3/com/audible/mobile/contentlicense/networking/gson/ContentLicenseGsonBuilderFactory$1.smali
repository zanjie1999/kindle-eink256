.class Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory$1;
.super Ljava/lang/Object;
.source "ContentLicenseGsonBuilderFactory.java"

# interfaces
.implements Lcom/audible/mobile/networking/retrofit/gson/NullSafeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;->get()Lcom/google/gson/GsonBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/networking/retrofit/gson/NullSafeFactory<",
        "Lcom/audible/mobile/domain/RequestId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nullSafeCreate(Ljava/lang/String;)Lcom/audible/mobile/domain/RequestId;
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableRequestIdImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/RequestId;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nullSafeCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory$1;->nullSafeCreate(Ljava/lang/String;)Lcom/audible/mobile/domain/RequestId;

    move-result-object p1

    return-object p1
.end method
