.class public Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;
.super Ljava/lang/Object;
.source "AppExpanResourceSetMetadata.java"


# instance fields
.field private final resourceSetName:Ljava/lang/String;

.field private final resourceSetVersion:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;->resourceSetName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;->resourceSetVersion:I

    return-void
.end method


# virtual methods
.method public getResourceSetName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;->resourceSetName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceSetVersion()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;->resourceSetVersion:I

    return v0
.end method
