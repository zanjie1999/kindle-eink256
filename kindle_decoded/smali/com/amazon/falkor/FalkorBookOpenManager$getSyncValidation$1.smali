.class public final Lcom/amazon/falkor/FalkorBookOpenManager$getSyncValidation$1;
.super Ljava/lang/Object;
.source "FalkorBookOpenManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/FalkorBookOpenManager;->getSyncValidation(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/falkor/FalkorBookOpenManager$getSyncValidation$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performValidation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/falkor/FalkorBookOpenManager$getSyncValidation$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/application/SyncType;->META_DATA:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    const/4 p1, 0x0

    return-object p1
.end method
