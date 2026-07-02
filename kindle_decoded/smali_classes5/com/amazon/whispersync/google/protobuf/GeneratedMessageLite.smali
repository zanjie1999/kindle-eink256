.class public abstract Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;-><init>()V

    return-void
.end method

.method public static newRepeatedGeneratedExtension(Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;Z)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;",
            "Z)",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v4, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v7, v4

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v13}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;ZZLcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/amazon/whispersync/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V

    return-object v6
.end method

.method public static newSingularGeneratedExtension(Lcom/amazon/whispersync/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;",
            ")",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance v6, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v4, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v4

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v7 .. v13}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;ZZLcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/amazon/whispersync/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V

    return-object v6
.end method


# virtual methods
.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/amazon/whispersync/google/protobuf/MessageLite;)V

    return-object v0
.end method
