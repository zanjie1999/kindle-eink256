.class public Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;
.super Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;
.source "XMLAttribute.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;->mKey:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method toXML(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;->mValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
