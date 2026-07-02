.class Lcom/amazon/kcp/application/AbstractKindleObjectFactory$1;
.super Ljava/lang/Object;
.source "AbstractKindleObjectFactory.java"

# interfaces
.implements Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getEmptyLibraryStringProviderFactory()Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AbstractKindleObjectFactory;)V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEmptyLibraryStringProvider(Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)Lcom/amazon/kcp/library/EmptyLibraryStringProvider;
    .locals 0

    return-object p1
.end method
