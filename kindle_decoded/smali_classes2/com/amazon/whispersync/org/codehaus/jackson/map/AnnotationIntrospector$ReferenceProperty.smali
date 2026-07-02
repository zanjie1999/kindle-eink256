.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferenceProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;
    }
.end annotation


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _type:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    .line 68
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->_name:Ljava/lang/String;

    return-void
.end method

.method public static back(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 2

    .line 72
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public static managed(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 2

    .line 71
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    return-object v0
.end method

.method public isBackReference()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManagedReference()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
