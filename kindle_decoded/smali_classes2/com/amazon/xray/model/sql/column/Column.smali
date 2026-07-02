.class public abstract Lcom/amazon/xray/model/sql/column/Column;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Lcom/amazon/xray/model/sql/Selectable;


# instance fields
.field private final name:Ljava/lang/String;

.field private final table:Lcom/amazon/xray/model/sql/table/Table;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 28
    invoke-static {p2}, Lcom/amazon/xray/util/Validate;->notEmpty(Ljava/lang/CharSequence;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/xray/model/sql/column/Column;->table:Lcom/amazon/xray/model/sql/table/Table;

    .line 31
    iput-object p2, p0, Lcom/amazon/xray/model/sql/column/Column;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/xray/model/sql/column/Column;->table:Lcom/amazon/xray/model/sql/table/Table;

    invoke-virtual {v1}, Lcom/amazon/xray/model/sql/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/sql/column/Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/xray/model/sql/column/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/xray/model/sql/column/Column;->table:Lcom/amazon/xray/model/sql/table/Table;

    invoke-virtual {v1}, Lcom/amazon/xray/model/sql/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/sql/column/Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
