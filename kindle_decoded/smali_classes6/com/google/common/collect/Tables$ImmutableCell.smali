.class final Lcom/google/common/collect/Tables$ImmutableCell;
.super Lcom/google/common/collect/Tables$AbstractCell;
.source "Tables.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmutableCell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Tables$AbstractCell<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final columnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final rowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/common/collect/Tables$AbstractCell;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/common/collect/Tables$ImmutableCell;->rowKey:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/google/common/collect/Tables$ImmutableCell;->columnKey:Ljava/lang/Object;

    .line 76
    iput-object p3, p0, Lcom/google/common/collect/Tables$ImmutableCell;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/Tables$ImmutableCell;->columnKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/Tables$ImmutableCell;->rowKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/common/collect/Tables$ImmutableCell;->value:Ljava/lang/Object;

    return-object v0
.end method
