.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;
.super Ljava/lang/Object;
.source "JsonMappingException.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _fieldName:Ljava/lang/String;

.field protected _from:Ljava/lang/Object;

.field protected _index:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    .line 71
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    .line 83
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 78
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can not pass null fieldName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    return v0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/Object;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 102
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x22

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 113
    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException$Reference;->_index:I

    if-ltz v1, :cond_3

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v1, 0x3f

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x5d

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
