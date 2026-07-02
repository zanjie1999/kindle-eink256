.class final Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/guava/Objects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueHolder"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field next:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

.field value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/guava/Objects$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;-><init>()V

    return-void
.end method
