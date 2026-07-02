.class public Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;
.super Ljava/lang/Object;
.source "CrossReplicaLinkArea.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IInteractiveArea;


# instance fields
.field private m_pageNumber:I

.field private m_rectangle:Landroid/graphics/RectF;

.field private m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p2, p0, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;->m_pageNumber:I

    .line 16
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;->m_rectangle:Landroid/graphics/RectF;

    .line 17
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;->m_pageNumber:I

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntCallback;->execute(I)V

    return-void
.end method

.method public getRectangle()Landroid/graphics/RectF;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;->m_rectangle:Landroid/graphics/RectF;

    return-object v0
.end method
