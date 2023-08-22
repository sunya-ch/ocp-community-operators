# set version here such as 1.0.0
VERSION=$1
MULTI_NIC_CNI_PATH="../multi-nic-cni-operator"
CLONE_PATH=./
OPERATOR_NAME=multi-nic-cni-operator

rm -r ${CLONE_PATH}/operators/${OPERATOR_NAME}/${VERSION}
pushd ${MULTI_NIC_CNI_PATH}; git checkout v${VERSION}; make bundle;popd
cp -r ${MULTI_NIC_CNI_PATH}/bundle ${CLONE_PATH}/operators/${OPERATOR_NAME}/${VERSION}/
cp ${MULTI_NIC_CNI_PATH}/bundle.Dockerfile ${CLONE_PATH}/operators/${OPERATOR_NAME}/${VERSION}/