.class public abstract Lcom/amazon/xray/model/sql/table/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notEmpty(Ljava/lang/CharSequence;)V

    .line 22
    iput-object p1, p0, Lcom/amazon/xray/model/sql/table/Table;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/xray/model/sql/table/Table;->name:Ljava/lang/String;

    return-object v0
.end method
