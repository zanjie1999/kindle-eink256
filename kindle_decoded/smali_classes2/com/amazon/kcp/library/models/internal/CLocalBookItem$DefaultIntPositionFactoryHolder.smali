.class Lcom/amazon/kcp/library/models/internal/CLocalBookItem$DefaultIntPositionFactoryHolder;
.super Ljava/lang/Object;
.source "CLocalBookItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultIntPositionFactoryHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/reader/IPositionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 650
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem$DefaultIntPositionFactoryHolder;->INSTANCE:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    return-void
.end method
