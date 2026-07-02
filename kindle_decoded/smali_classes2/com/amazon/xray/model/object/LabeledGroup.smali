.class public Lcom/amazon/xray/model/object/LabeledGroup;
.super Ljava/lang/Object;
.source "LabeledGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 28
    invoke-static {p2}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/xray/model/object/LabeledGroup;->label:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/xray/model/object/LabeledGroup;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/xray/model/object/LabeledGroup;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/xray/model/object/LabeledGroup;->label:Ljava/lang/String;

    return-object v0
.end method
