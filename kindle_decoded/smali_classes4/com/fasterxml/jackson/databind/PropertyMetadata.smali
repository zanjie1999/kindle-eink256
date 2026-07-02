.class public Lcom/fasterxml/jackson/databind/PropertyMetadata;
.super Ljava/lang/Object;
.source "PropertyMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field public static final STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field public static final STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field private static final serialVersionUID:J = -0x1L


# instance fields
.field protected final _defaultValue:Ljava/lang/String;

.field protected final _description:Ljava/lang/String;

.field protected final _index:Ljava/lang/Integer;

.field protected final _required:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 18
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 20
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    .line 62
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_description:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_index:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    .line 64
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p4, 0x0

    :cond_1
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_defaultValue:Ljava/lang/String;

    return-void
.end method

.method public static construct(ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 80
    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :goto_0
    return-object p0

    .line 78
    :cond_2
    :goto_1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isRequired()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_description:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_index:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_defaultValue:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :goto_0
    return-object v0

    :cond_2
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 4

    .line 99
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_index:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_defaultValue:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method
