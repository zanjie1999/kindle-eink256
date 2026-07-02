.class public Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NopIndenter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V
    .locals 0

    return-void
.end method
